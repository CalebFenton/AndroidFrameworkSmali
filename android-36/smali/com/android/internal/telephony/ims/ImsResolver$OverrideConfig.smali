.class Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;
.super Ljava/lang/Object;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverrideConfig"
.end annotation


# instance fields
.field public final blacklist featureTypes:[I

.field public final blacklist isCarrierService:Z

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist slotId:I

.field public final blacklist userId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;IIZ[I)V
    .registers 6

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->packageName:Ljava/lang/String;

    .line 184
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->slotId:I

    .line 185
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->userId:I

    .line 186
    iput-boolean p4, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->isCarrierService:Z

    .line 187
    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->featureTypes:[I

    return-void
.end method
