.class public final Landroid/security/intrusiondetection/IntrusionDetectionEvent;
.super Ljava/lang/Object;
.source "IntrusionDetectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IntrusionDetectionEvent$EventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_EVENT_CONNECT:I = 0x2

.field public static final whitelist NETWORK_EVENT_DNS:I = 0x1

.field public static final whitelist SECURITY_EVENT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IntrusionDetectionEvent"


# instance fields
.field private final blacklist mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

.field private final blacklist mNetworkEventDns:Landroid/app/admin/DnsEvent;

.field private final blacklist mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent$1;

    invoke-direct {v0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent$1;-><init>()V

    sput-object v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/ConnectEvent;)V
    .registers 3
    .param p1, "connectEvent"    # Landroid/app/admin/ConnectEvent;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    .line 126
    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 128
    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    .line 129
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/DnsEvent;)V
    .registers 3
    .param p1, "dnsEvent"    # Landroid/app/admin/DnsEvent;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    .line 113
    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 115
    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    .line 116
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/SecurityLog$SecurityEvent;)V
    .registers 3
    .param p1, "securityEvent"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    .line 101
    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    .line 103
    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    .line 104
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    .line 167
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_58

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_2a
    sget-object v0, Landroid/app/admin/ConnectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/ConnectEvent;

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    .line 180
    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 181
    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    .line 182
    goto :goto_57

    .line 174
    :pswitch_39
    sget-object v0, Landroid/app/admin/DnsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DnsEvent;

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    .line 175
    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 176
    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    .line 177
    goto :goto_57

    .line 169
    :pswitch_48
    sget-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 170
    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    .line 171
    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    .line 172
    nop

    .line 186
    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_48
        :pswitch_39
        :pswitch_2a
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/intrusiondetection/IntrusionDetectionEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createForConnectEvent(Landroid/app/admin/ConnectEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .registers 2
    .param p0, "connectEvent"    # Landroid/app/admin/ConnectEvent;

    .line 162
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/app/admin/ConnectEvent;)V

    return-object v0
.end method

.method public static whitelist createForDnsEvent(Landroid/app/admin/DnsEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .registers 2
    .param p0, "dnsEvent"    # Landroid/app/admin/DnsEvent;

    .line 150
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/app/admin/DnsEvent;)V

    return-object v0
.end method

.method public static whitelist createForSecurityEvent(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .registers 2
    .param p0, "securityEvent"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 140
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConnectEvent()Landroid/app/admin/ConnectEvent;
    .registers 4

    .line 215
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 216
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    return-object v0

    .line 218
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event type is not network connect event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDnsEvent()Landroid/app/admin/DnsEvent;
    .registers 4

    .line 206
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 207
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    return-object v0

    .line 209
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event type is not network DNS event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSecurityEvent()Landroid/app/admin/SecurityLog$SecurityEvent;
    .registers 4

    .line 197
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    if-nez v0, :cond_7

    .line 198
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    return-object v0

    .line 200
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event type is not security event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 191
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntrusionDetectionEvent{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 223
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    packed-switch v0, :pswitch_data_38

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_25
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/ConnectEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    goto :goto_37

    .line 229
    :pswitch_2b
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DnsEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    goto :goto_37

    .line 226
    :pswitch_31
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/SecurityLog$SecurityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    nop

    .line 237
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method
