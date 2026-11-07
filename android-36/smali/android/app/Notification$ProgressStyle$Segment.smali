.class public final Landroid/app/Notification$ProgressStyle$Segment;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field private blacklist mColor:I

.field private blacklist mId:I

.field private blacklist mLength:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColor(Landroid/app/Notification$ProgressStyle$Segment;)I
    .registers 1

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    return p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 12192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12183
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    .line 12184
    iput v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    .line 12193
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    .line 12194
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 12245
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 12246
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 12247
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 12248
    .local v2, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    iget v3, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 12246
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist getColor()I
    .registers 2

    .line 12229
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 12211
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    return v0
.end method

.method public whitelist getLength()I
    .registers 2

    .line 12202
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 12254
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$ProgressStyle$Segment;
    .registers 2
    .param p1, "color"    # I

    .line 12236
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    .line 12237
    return-object p0
.end method

.method public whitelist setId(I)Landroid/app/Notification$ProgressStyle$Segment;
    .registers 2
    .param p1, "id"    # I

    .line 12218
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    .line 12219
    return-object p0
.end method
