.class public final Landroid/adservices/ondevicepersonalization/OSVersion$Builder;
.super Ljava/lang/Object;
.source "OSVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/OSVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mMajor:I

.field private blacklist mMicro:I

.field private blacklist mMinor:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    .line 221
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 7
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "micro"    # I

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    .line 209
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMajor:I

    .line 210
    const-class v0, Landroid/annotation/NonNull;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMajor:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 212
    iput p2, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMinor:I

    .line 213
    const-class v0, Landroid/annotation/NonNull;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMinor:I

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 215
    iput p3, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMicro:I

    .line 216
    const-class v0, Landroid/annotation/NonNull;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMicro:I

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 218
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 269
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 273
    return-void

    .line 270
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/OSVersion;
    .registers 5

    .line 258
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->checkNotUsed()V

    .line 259
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    .line 261
    new-instance v0, Landroid/adservices/ondevicepersonalization/OSVersion;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMajor:I

    iget v2, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMinor:I

    iget v3, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMicro:I

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/OSVersion;-><init>(III)V

    .line 265
    .local v0, "o":Landroid/adservices/ondevicepersonalization/OSVersion;
    return-object v0
.end method

.method public blacklist setMajor(I)Landroid/adservices/ondevicepersonalization/OSVersion$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 228
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->checkNotUsed()V

    .line 229
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    .line 230
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMajor:I

    .line 231
    return-object p0
.end method

.method public blacklist setMicro(I)Landroid/adservices/ondevicepersonalization/OSVersion$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 250
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->checkNotUsed()V

    .line 251
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    .line 252
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMicro:I

    .line 253
    return-object p0
.end method

.method public blacklist setMinor(I)Landroid/adservices/ondevicepersonalization/OSVersion$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 239
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->checkNotUsed()V

    .line 240
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mBuilderFieldsSet:J

    .line 241
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OSVersion$Builder;->mMinor:I

    .line 242
    return-object p0
.end method
