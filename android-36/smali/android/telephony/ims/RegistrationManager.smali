.class public interface abstract Landroid/telephony/ims/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RegistrationManager$RegistrationCallback;,
        Landroid/telephony/ims/RegistrationManager$SuggestedAction;,
        Landroid/telephony/ims/RegistrationManager$ImsRegistrationState;
    }
.end annotation


# static fields
.field public static final blacklist IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_NOT_REGISTERED:I = 0x0

.field public static final whitelist REGISTRATION_STATE_REGISTERED:I = 0x2

.field public static final whitelist REGISTRATION_STATE_REGISTERING:I = 0x1

.field public static final whitelist SUGGESTED_ACTION_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUGGESTED_ACTION_TRIGGER_CLEAR_RAT_BLOCKS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUGGESTED_ACTION_TRIGGER_PLMN_BLOCK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUGGESTED_ACTION_TRIGGER_PLMN_BLOCK_WITH_TIMEOUT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUGGESTED_ACTION_TRIGGER_RAT_BLOCK:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 142
    nop

    .line 145
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 146
    nop

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 148
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 149
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 150
    nop

    .line 151
    nop

    .line 152
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 156
    nop

    .line 157
    nop

    .line 142
    move-object v2, v1

    move-object v6, v4

    move-object v7, v4

    move-object v9, v8

    move-object v10, v8

    invoke-static/range {v1 .. v10}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/RegistrationManager;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method public static blacklist getAccessType(I)I
    .registers 3
    .param p0, "regtech"    # I

    .line 181
    sget-object v0, Landroid/telephony/ims/RegistrationManager;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccessType - invalid regType returned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, -0x1

    return v0

    .line 186
    :cond_26
    sget-object v0, Landroid/telephony/ims/RegistrationManager;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist registrationStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 163
    packed-switch p0, :pswitch_data_12

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :pswitch_8
    const-string v0, "REGISTRATION_STATE_REGISTERED"

    return-object v0

    .line 167
    :pswitch_b
    const-string v0, "REGISTRATION_STATE_REGISTERING"

    return-object v0

    .line 165
    :pswitch_e
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public abstract whitelist getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
.end method
