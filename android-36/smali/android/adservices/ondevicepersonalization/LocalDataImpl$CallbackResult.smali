.class Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
.super Ljava/lang/Object;
.source "LocalDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/LocalDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackResult"
.end annotation


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mResult:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErrorCode(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)I
    .registers 1

    iget p0, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->mErrorCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResult(Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->mResult:Landroid/os/Bundle;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "errorCode"    # I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->mResult:Landroid/os/Bundle;

    .line 184
    iput p2, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;->mErrorCode:I

    .line 185
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Bundle;ILandroid/adservices/ondevicepersonalization/LocalDataImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;-><init>(Landroid/os/Bundle;I)V

    return-void
.end method
