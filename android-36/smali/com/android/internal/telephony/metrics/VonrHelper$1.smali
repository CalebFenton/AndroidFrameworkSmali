.class Lcom/android/internal/telephony/metrics/VonrHelper$1;
.super Ljava/lang/Object;
.source "VonrHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/VonrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/VonrHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/VonrHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/VonrHelper$1;->this$0:Lcom/android/internal/telephony/metrics/VonrHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VonrHelper$1;->this$0:Lcom/android/internal/telephony/metrics/VonrHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VonrHelper;->-$$Nest$fgetmPhoneVonrState(Lcom/android/internal/telephony/metrics/VonrHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2f

    aget-object v3, v0, v2

    .line 69
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/VonrHelper$1;->this$0:Lcom/android/internal/telephony/metrics/VonrHelper;

    invoke-static {v4}, Lcom/android/internal/telephony/metrics/VonrHelper;->-$$Nest$fgetmPhoneVonrState(Lcom/android/internal/telephony/metrics/VonrHelper;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/telephony/metrics/PerSimStatus;->isVonrEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2f
    return-void
.end method
