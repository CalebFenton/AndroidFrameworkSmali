.class public final Landroid/icu/impl/ICURWLock$Stats;
.super Ljava/lang/Object;
.source "ICURWLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICURWLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation


# instance fields
.field public _mrc:I

.field public _rc:I

.field public _wc:I

.field public _wrc:I

.field public _wwc:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0
    .param p1, "rc"    # I
    .param p2, "mrc"    # I
    .param p3, "wrc"    # I
    .param p4, "wc"    # I
    .param p5, "wwc"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput p1, p0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    #@5
    .line 76
    iput p2, p0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    #@7
    .line 77
    iput p3, p0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    #@9
    .line 78
    iput p4, p0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    #@b
    .line 79
    iput p5, p0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    #@d
    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/ICURWLock$Stats;)V
    .locals 6
    .param p1, "rhs"    # Landroid/icu/impl/ICURWLock$Stats;

    #@0
    .prologue
    .line 83
    iget v1, p1, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    #@2
    iget v2, p1, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    #@4
    iget v3, p1, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    #@6
    iget v4, p1, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    #@8
    iget v5, p1, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    #@a
    move-object v0, p0

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICURWLock$Stats;-><init>(IIIII)V

    #@e
    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ICURWLock$Stats;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;)V
    .locals 0
    .param p1, "rhs"    # Landroid/icu/impl/ICURWLock$Stats;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, " rc: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 91
    const-string/jumbo v1, " mrc: "

    #@15
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 91
    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    #@1b
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 92
    const-string/jumbo v1, " wrc: "

    #@22
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 92
    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    #@28
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 93
    const-string/jumbo v1, " wc: "

    #@2f
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 93
    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    #@35
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 94
    const-string/jumbo v1, " wwc: "

    #@3c
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 94
    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    #@42
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method
