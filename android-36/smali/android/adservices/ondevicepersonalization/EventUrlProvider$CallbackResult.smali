.class Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;
.super Ljava/lang/Object;
.source "EventUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/EventUrlProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackResult"
.end annotation


# instance fields
.field final blacklist mErrorCode:I

.field final blacklist mResult:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "errorCode"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;->mResult:Landroid/os/Bundle;

    .line 150
    iput p2, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;->mErrorCode:I

    .line 151
    return-void
.end method
