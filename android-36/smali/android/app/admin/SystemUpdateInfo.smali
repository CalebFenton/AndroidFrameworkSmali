.class public final Landroid/app/admin/SystemUpdateInfo;
.super Ljava/lang/Object;
.source "SystemUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdateInfo$SecurityPatchState;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_ORIGINAL_BUILD:Ljava/lang/String; = "original-build"

.field private static final greylist-max-o ATTR_RECEIVED_TIME:Ljava/lang/String; = "received-time"

.field private static final greylist-max-o ATTR_SECURITY_PATCH_STATE:Ljava/lang/String; = "security-patch-state"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SECURITY_PATCH_STATE_FALSE:I = 0x1

.field public static final whitelist SECURITY_PATCH_STATE_TRUE:I = 0x2

.field public static final whitelist SECURITY_PATCH_STATE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SystemUpdateInfo"


# instance fields
.field private final greylist-max-o mReceivedTime:J

.field private final greylist-max-o mSecurityPatchState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/app/admin/SystemUpdateInfo$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdateInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(JI)V
    .registers 4
    .param p1, "receivedTime"    # J
    .param p3, "securityPatchState"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    .line 77
    iput p3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    .line 78
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/SystemUpdateInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/SystemUpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o of(J)Landroid/app/admin/SystemUpdateInfo;
    .registers 4
    .param p0, "receivedTime"    # J

    .line 88
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    .line 89
    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    .line 88
    :goto_e
    return-object v0
.end method

.method public static greylist-max-o of(JZ)Landroid/app/admin/SystemUpdateInfo;
    .registers 5
    .param p0, "receivedTime"    # J
    .param p2, "isSecurityPatch"    # Z

    .line 95
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    .line 96
    if-eqz p2, :cond_e

    const/4 v1, 0x2

    goto :goto_f

    :cond_e
    const/4 v1, 0x1

    :goto_f
    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    .line 95
    :goto_12
    return-object v0
.end method

.method public static blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/SystemUpdateInfo;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 144
    const-string/jumbo v0, "original-build"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "buildFingerprint":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 146
    return-object v1

    .line 149
    :cond_11
    :try_start_11
    const-string/jumbo v2, "received-time"

    .line 150
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 151
    .local v2, "receivedTime":J
    const-string/jumbo v4, "security-patch-state"

    .line 152
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 153
    .local v4, "securityPatchState":I
    new-instance v5, Landroid/app/admin/SystemUpdateInfo;

    invoke-direct {v5, v2, v3, v4}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_24} :catch_25

    return-object v5

    .line 154
    .end local v2    # "receivedTime":J
    .end local v4    # "securityPatchState":I
    :catch_25
    move-exception v2

    .line 155
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SystemUpdateInfo"

    const-string v4, "Load xml failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    return-object v1
.end method

.method private static greylist-max-o securityPatchStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 178
    packed-switch p0, :pswitch_data_28

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized security patch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_1c
    const-string/jumbo v0, "true"

    return-object v0

    .line 180
    :pswitch_20
    const-string v0, "false"

    return-object v0

    .line 184
    :pswitch_23
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 193
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 194
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 195
    .local v2, "that":Landroid/app/admin/SystemUpdateInfo;
    iget-wide v3, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    iget-wide v5, v2, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    iget v3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    iget v4, v2, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 193
    .end local v2    # "that":Landroid/app/admin/SystemUpdateInfo;
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist getReceivedTime()J
    .registers 3

    .line 105
    iget-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    return-wide v0
.end method

.method public whitelist getSecurityPatchState()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 201
    iget-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 173
    iget-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Landroid/app/admin/SystemUpdateInfo;->securityPatchStateToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 173
    const-string v1, "SystemUpdateInfo (receivedTime = %d, securityPatchState = %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getReceivedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getSecurityPatchState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void
.end method

.method public blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V
    .registers 7
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const-string/jumbo v1, "received-time"

    iget-wide v2, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string/jumbo v1, "security-patch-state"

    iget v2, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string/jumbo v1, "original-build"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    return-void
.end method
