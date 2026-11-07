.class Landroid/view/SurfaceControlRegistry$DefaultReporter;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"

# interfaces
.implements Landroid/view/SurfaceControlRegistry$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultReporter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry$DefaultReporter;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onMaxLayersExceeded$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 6
    .param p0, "o1"    # Ljava/util/Map$Entry;
    .param p1, "o2"    # Ljava/util/Map$Entry;

    .line 76
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V
    .registers 20
    .param p2, "limit"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 69
    .local p1, "surfaceControls":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/view/SurfaceControl;Ljava/lang/Long;>;"
    move-object/from16 v0, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 70
    .local v1, "now":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Ljava/lang/Long;>;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 72
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Ljava/lang/Long;>;"
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Ljava/lang/Long;>;"
    goto :goto_13

    .line 76
    :cond_23
    new-instance v4, Landroid/view/SurfaceControlRegistry$DefaultReporter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/view/SurfaceControlRegistry$DefaultReporter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 79
    .local v4, "size":I
    const-string v6, "SurfaceControlRegistry"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v6, "----------------------"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listing oldest "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/util/WeakHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_64
    if-ge v6, v4, :cond_d0

    .line 83
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 84
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl;

    .line 85
    .local v8, "sc":Landroid/view/SurfaceControl;
    if-nez v8, :cond_75

    .line 87
    goto :goto_cd

    .line 90
    :cond_75
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 91
    .local v9, "timeRegistered":J
    const-string v11, "  "

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v8}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->getCallsite()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v9

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "s ago]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Ljava/lang/Long;>;"
    .end local v8    # "sc":Landroid/view/SurfaceControl;
    .end local v9    # "timeRegistered":J
    :goto_cd
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 96
    .end local v6    # "i":I
    :cond_d0
    return-void
.end method
