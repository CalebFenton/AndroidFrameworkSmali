.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final mId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    #@5
    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Landroid/media/AudioHandle;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 41
    check-cast v0, Landroid/media/AudioHandle;

    #@a
    .line 42
    .local v0, "ah":Landroid/media/AudioHandle;
    iget v2, p0, Landroid/media/AudioHandle;->mId:I

    #@c
    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    #@f
    move-result v3

    #@10
    if-ne v2, v3, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    :cond_0
    return v1

    #@14
    .line 39
    .end local v0    # "ah":Landroid/media/AudioHandle;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 47
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    #@2
    return v0
.end method

.method id()I
    .locals 1

    #@0
    .prologue
    .line 33
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
