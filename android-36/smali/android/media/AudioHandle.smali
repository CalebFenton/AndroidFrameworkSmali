.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final greylist mId:I


# direct methods
.method constructor greylist-max-r <init>(I)V
    .registers 2
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    instance-of v1, p1, Landroid/media/AudioHandle;

    if-nez v1, :cond_8

    goto :goto_15

    .line 46
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/media/AudioHandle;

    .line 47
    .local v1, "ah":Landroid/media/AudioHandle;
    iget v2, p0, Landroid/media/AudioHandle;->mId:I

    invoke-virtual {v1}, Landroid/media/AudioHandle;->id()I

    move-result v3

    if-ne v2, v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    .line 44
    .end local v1    # "ah":Landroid/media/AudioHandle;
    :cond_15
    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method greylist-max-o id()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 57
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
