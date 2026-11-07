.class Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;
.super Landroid/telephony/SignalStrength;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalStrengthTestable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    .line 400
    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyTester;Lcom/android/internal/telephony/TelephonyTester-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    return-void
.end method


# virtual methods
.method public blacklist mockLevel(I)V
    .registers 6

    .line 405
    :try_start_0
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v1, "mLte"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 407
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    .line 409
    const-class v2, Landroid/telephony/CellSignalStrengthLte;

    const-string v3, "mLevel"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 410
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    .line 413
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrengthTestable: mockLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrengthTestable-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 3

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string p1, "SignalStrengthTestable: updateLevel: do nothing "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V

    return-void
.end method
