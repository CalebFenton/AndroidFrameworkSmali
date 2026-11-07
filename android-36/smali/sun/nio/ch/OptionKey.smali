.class Lsun/nio/ch/OptionKey;
.super Ljava/lang/Object;
.source "OptionKey.java"


# instance fields
.field private blacklist level:I

.field private blacklist name:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "level"    # I
    .param p2, "name"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lsun/nio/ch/OptionKey;->level:I

    .line 38
    iput p2, p0, Lsun/nio/ch/OptionKey;->name:I

    .line 39
    return-void
.end method


# virtual methods
.method blacklist level()I
    .registers 2

    .line 42
    iget v0, p0, Lsun/nio/ch/OptionKey;->level:I

    return v0
.end method

.method blacklist name()I
    .registers 2

    .line 46
    iget v0, p0, Lsun/nio/ch/OptionKey;->name:I

    return v0
.end method
