.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic blacklist f$1:Landroid/telephony/DataConnectionRealTimeInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;->f$0:Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/DataConnectionRealTimeInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;->f$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-static {v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionRealTimeInfoChanged$28(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method
