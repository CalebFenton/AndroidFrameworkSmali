.class Lcom/android/internal/telephony/NetworkFactoryImpl$2;
.super Landroid/net/NetworkProvider;
.source "NetworkFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkFactoryImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryImpl$2;->this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .registers 2

    .line 166
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryImpl$2;->this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryImpl;->-$$Nest$mhandleRemoveRequest(Lcom/android/internal/telephony/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public whitelist onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .registers 4

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryImpl$2;->this$0:Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryImpl;->-$$Nest$mhandleAddRequest(Lcom/android/internal/telephony/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
