.class Lcom/android/internal/telephony/NetworkFactoryImpl$1;
.super Ljava/lang/Object;
.source "NetworkFactoryImpl.java"

# interfaces
.implements Landroid/net/NetworkProvider$NetworkOfferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkFactoryImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryImpl$1;->this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryImpl$1;->this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryImpl;->-$$Nest$mhandleAddRequest(Lcom/android/internal/telephony/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public whitelist onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryImpl$1;->this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryImpl;->-$$Nest$mhandleRemoveRequest(Lcom/android/internal/telephony/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
