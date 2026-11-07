.class public final Landroid/content/pm/IntentFilterVerificationInfo;
.super Ljava/lang/Object;
.source "IntentFilterVerificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o ATTR_DOMAIN_NAME:Ljava/lang/String; = "name"

.field private static final greylist-max-o ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final greylist-max-o ATTR_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o TAG_DOMAIN:Ljava/lang/String; = "domain"


# instance fields
.field private greylist-max-o mDomains:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    .line 242
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/IntentFilterVerificationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    .line 66
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    .line 83
    invoke-direct {p0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    .line 78
    invoke-virtual {p0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 79
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    .line 70
    iput-object p1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    .line 73
    return-void
.end method

.method public static greylist-max-o getStatusStringFromValue(J)Ljava/lang/String;
    .registers 5
    .param p0, "val"    # J

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    packed-switch v1, :pswitch_data_3c

    .line 216
    const-string/jumbo v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 211
    :pswitch_14
    const-string v1, "always-ask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto :goto_37

    .line 207
    :pswitch_1a
    const-string/jumbo v1, "never"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    goto :goto_37

    .line 198
    :pswitch_21
    const-string v1, "always : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-wide/16 v1, -0x1

    and-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    goto :goto_37

    .line 203
    :pswitch_31
    const-string v1, "ask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    nop

    .line 219
    :goto_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_21
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 232
    iget-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDomains()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    return-object v0
.end method

.method public greylist-max-o getDomainsString()Ljava/lang/String;
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 118
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_b

    .line 122
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist getIntFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 138
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    return v0
.end method

.method public greylist-max-o getStatusString()Ljava/lang/String;
    .registers 4

    .line 190
    iget v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusStringFromValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getStringFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_3a

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object p3

    .line 133
    .end local v1    # "msg":Ljava/lang/String;
    :cond_3a
    return-object v0
.end method

.method public blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const-string/jumbo v0, "packageName"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStringFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 146
    sget-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    const-string v2, "Package name cannot be null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_15
    const-string/jumbo v0, "status"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/pm/IntentFilterVerificationInfo;->getIntFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "status":I
    if-ne v0, v2, :cond_37

    .line 150
    sget-object v2, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_37
    iput v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    .line 154
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 156
    .local v2, "outerDepth":I
    :cond_3d
    :goto_3d
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_8f

    const/4 v3, 0x3

    if-ne v4, v3, :cond_4e

    .line 158
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_8f

    .line 159
    :cond_4e
    if-eq v4, v3, :cond_3d

    const/4 v3, 0x4

    if-ne v4, v3, :cond_54

    .line 161
    goto :goto_3d

    .line 164
    :cond_54
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "domain"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 166
    const-string/jumbo v5, "name"

    invoke-virtual {p0, p1, v5, v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStringFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 168
    iget-object v6, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v5    # "name":Ljava/lang/String;
    :cond_72
    goto :goto_8b

    .line 171
    :cond_73
    sget-object v5, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_8b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 174
    .end local v3    # "tagName":Ljava/lang/String;
    goto :goto_3d

    .line 175
    :cond_8f
    return-void
.end method

.method public greylist-max-o setDomains(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "list":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    .line 111
    return-void
.end method

.method public greylist-max-o setStatus(I)V
    .registers 5
    .param p1, "s"    # I

    .line 96
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 98
    iput p1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    goto :goto_20

    .line 100
    :cond_8
    sget-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a non supported status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_20
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 237
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const-string/jumbo v0, "status"

    iget v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mStatus:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, "str":Ljava/lang/String;
    const-string v3, "domain"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_17

    .line 186
    :cond_32
    return-void
.end method
