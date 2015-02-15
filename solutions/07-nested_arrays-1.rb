<pre class="highlight ruby"><code><span class="n">numbers</span> <span class="o">=</span> <span class="p">[</span>
  <span class="p">[</span><span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">3</span><span class="p">],</span>
  <span class="p">[</span><span class="mi">4</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="mi">6</span><span class="p">],</span>
  <span class="p">[</span><span class="mi">7</span><span class="p">,</span> <span class="mi">8</span><span class="p">,</span> <span class="mi">9</span><span class="p">]</span>
<span class="p">]</span>

<span class="n">sums</span> <span class="o">=</span> <span class="n">numbers</span><span class="p">.</span><span class="nf">map</span> <span class="k">do</span> <span class="o">|</span><span class="n">row</span><span class="o">|</span>
  <span class="n">sum</span> <span class="o">=</span> <span class="mi">0</span>
  <span class="n">row</span><span class="p">.</span><span class="nf">each</span> <span class="p">{</span> <span class="o">|</span><span class="n">number</span><span class="o">|</span> <span class="n">sum</span> <span class="o">=</span> <span class="n">sum</span> <span class="o">+</span> <span class="n">number</span> <span class="p">}</span>
  <span class="n">sum</span>
<span class="k">end</span>

<span class="nb">p</span> <span class="n">sums</span>

<span class="c1"># Using inject is a better, because more succinct:</span>
<span class="c1">#</span>
<span class="c1"># numbers = numbers.map do |row|</span>
<span class="c1">#   row.inject(0) { |result, number| sum + number }</span>
<span class="c1"># end</span>
<span class="c1">#</span>
<span class="c1"># And you can even do:</span>
<span class="c1">#</span>
<span class="c1"># numbers = numbers.map { |row| row.inject(&amp;:+) }</span>
<span class="c1">#</span>
<span class="c1"># This last solution is pretty "magical", and hard to explain at this point.</span>
<span class="c1"># But we thought we'd show it :)</span>
</code></pre>