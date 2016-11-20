.class Lsun/misc/RegexpNode;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# instance fields
.field c:C

.field depth:I

.field exact:Z

.field firstchild:Lsun/misc/RegexpNode;

.field nextsibling:Lsun/misc/RegexpNode;

.field re:Ljava/lang/String;

.field result:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 268
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    #@6
    .line 271
    const/16 v0, 0x23

    #@8
    iput-char v0, p0, Lsun/misc/RegexpNode;->c:C

    #@a
    .line 272
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lsun/misc/RegexpNode;->depth:I

    #@d
    .line 270
    return-void
.end method

.method constructor <init>(CI)V
    .locals 1
    .param p1, "C"    # C
    .param p2, "depth"    # I

    #@0
    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 268
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    #@6
    .line 275
    iput-char p1, p0, Lsun/misc/RegexpNode;->c:C

    #@8
    .line 276
    iput p2, p0, Lsun/misc/RegexpNode;->depth:I

    #@a
    .line 274
    return-void
.end method


# virtual methods
.method add(C)Lsun/misc/RegexpNode;
    .locals 2
    .param p1, "C"    # C

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@2
    .line 280
    .local v0, "p":Lsun/misc/RegexpNode;
    if-nez v0, :cond_1

    #@4
    .line 281
    new-instance v0, Lsun/misc/RegexpNode;

    #@6
    .end local v0    # "p":Lsun/misc/RegexpNode;
    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    #@d
    .line 291
    .restart local v0    # "p":Lsun/misc/RegexpNode;
    :goto_0
    iput-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@f
    .line 292
    return-object v0

    #@10
    .line 287
    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    #@12
    .line 283
    :cond_1
    if-eqz v0, :cond_2

    #@14
    .line 284
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    #@16
    if-ne v1, p1, :cond_0

    #@18
    .line 285
    return-object v0

    #@19
    .line 288
    :cond_2
    new-instance v0, Lsun/misc/RegexpNode;

    #@1b
    .end local v0    # "p":Lsun/misc/RegexpNode;
    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    #@22
    .line 289
    .restart local v0    # "p":Lsun/misc/RegexpNode;
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@24
    iput-object v1, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    #@26
    goto :goto_0
.end method

.method find(C)Lsun/misc/RegexpNode;
    .locals 3
    .param p1, "C"    # C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 295
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@3
    .local v0, "p":Lsun/misc/RegexpNode;
    :goto_0
    if-eqz v0, :cond_1

    #@5
    .line 298
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 299
    return-object v0

    #@a
    .line 297
    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    #@c
    goto :goto_0

    #@d
    .line 300
    :cond_1
    return-object v2
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 303
    iget-object v1, p0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 304
    move-object v0, p0

    #@5
    .line 305
    .local v0, "p":Lsun/misc/RegexpNode;
    const-string/jumbo v1, "("

    #@8
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@b
    .line 306
    :goto_0
    if-eqz v0, :cond_3

    #@d
    .line 307
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    #@f
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    #@12
    .line 308
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 309
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@18
    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    #@1b
    .line 310
    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    #@1d
    .line 311
    if-eqz v0, :cond_1

    #@1f
    const/16 v1, 0x7c

    #@21
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    #@24
    goto :goto_0

    #@25
    :cond_1
    const/16 v1, 0x29

    #@27
    goto :goto_1

    #@28
    .line 314
    .end local v0    # "p":Lsun/misc/RegexpNode;
    :cond_2
    iget-char v1, p0, Lsun/misc/RegexpNode;->c:C

    #@2a
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    #@2d
    .line 315
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 316
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    #@33
    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    #@36
    .line 302
    :cond_3
    return-void
.end method
