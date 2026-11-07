.class public final Lcom/android/internal/widget/NotificationProgressBar$Segment;
.super Ljava/lang/Object;
.source "NotificationProgressBar.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationProgressBar$Part;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field private final blacklist mColor:I

.field private blacklist mEnd:F

.field private final blacklist mFaded:Z

.field private final blacklist mFraction:F

.field private blacklist mStart:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Segment;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnd(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mEnd:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .registers 4
    .param p1, "fraction"    # F
    .param p2, "color"    # I

    .line 1274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationProgressBar$Segment;-><init>(FIZ)V

    .line 1275
    return-void
.end method

.method public constructor blacklist <init>(FIZ)V
    .registers 4
    .param p1, "fraction"    # F
    .param p2, "color"    # I
    .param p3, "faded"    # Z

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    .line 1279
    iput p2, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    .line 1280
    iput-boolean p3, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    .line 1281
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 1297
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1299
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 1301
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 1302
    .local v2, "that":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_20

    return v1

    .line 1303
    :cond_20
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    if-eq v3, v4, :cond_27

    return v1

    .line 1304
    :cond_27
    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    iget-boolean v4, v2, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 1299
    .end local v2    # "that":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist getWidth()F
    .registers 3

    .line 1285
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mEnd:F

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1309
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Segment(fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mFaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Segment;->mEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
