.class public final Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;
.super Ljava/lang/Object;
.source "WebTriggerInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mData:[B

.field private blacklist mDestinationUrl:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 7
    .param p1, "destinationUrl"    # Landroid/net/Uri;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    .line 179
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mDestinationUrl:Landroid/net/Uri;

    .line 180
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mDestinationUrl:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 182
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    .line 183
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 185
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mData:[B

    .line 186
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mData:[B

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 236
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 240
    return-void

    .line 237
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;
    .registers 5

    .line 225
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->checkNotUsed()V

    .line 226
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    .line 228
    new-instance v0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mDestinationUrl:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mData:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;-><init>(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 232
    .local v0, "o":Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;
    return-object v0
.end method

.method public blacklist setAppPackageName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->checkNotUsed()V

    .line 207
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    .line 208
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public varargs blacklist setData([B)Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 217
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->checkNotUsed()V

    .line 218
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    .line 219
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mData:[B

    .line 220
    return-object p0
.end method

.method public blacklist setDestinationUrl(Landroid/net/Uri;)Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Landroid/net/Uri;

    .line 195
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->checkNotUsed()V

    .line 196
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mBuilderFieldsSet:J

    .line 197
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;->mDestinationUrl:Landroid/net/Uri;

    .line 198
    return-object p0
.end method
