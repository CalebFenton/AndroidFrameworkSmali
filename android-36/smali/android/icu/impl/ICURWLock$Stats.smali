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
.field public blacklist _mrc:I

.field public blacklist _rc:I

.field public blacklist _wc:I

.field public blacklist _wrc:I

.field public blacklist _wwc:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "rc"    # I
    .param p2, "mrc"    # I
    .param p3, "wrc"    # I
    .param p4, "wc"    # I
    .param p5, "wwc"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    .line 81
    iput p2, p0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    .line 82
    iput p3, p0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    .line 83
    iput p4, p0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    .line 84
    iput p5, p0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    .line 85
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/ICURWLock$Stats;)V
    .registers 8
    .param p1, "rhs"    # Landroid/icu/impl/ICURWLock$Stats;

    .line 88
    iget v1, p1, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    iget v2, p1, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    iget v3, p1, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    iget v4, p1, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    iget v5, p1, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICURWLock$Stats;-><init>(IIIII)V

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICURWLock-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ICURWLock$Stats;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mrc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wrc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wwc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
