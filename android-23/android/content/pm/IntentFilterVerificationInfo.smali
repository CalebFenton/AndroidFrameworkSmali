.class public final Landroid/content/pm/IntentFilterVerificationInfo;
.super Ljava/lang/Object;
.source "IntentFilterVerificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IntentFilterVerificationInfo$1;
    }
.end annotation


# static fields
.field private static final ATTR_DOMAIN_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_STATUS:Ljava/lang/String; = "status"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_DOMAIN:Ljava/lang/String; = "domain"


# instance fields
.field private mDomains:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainStatus:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-class v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@8
    .line 231
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo$1;

    #@a
    invoke-direct {v0}, Landroid/content/pm/IntentFilterVerificationInfo$1;-><init>()V

    #@d
    .line 230
    sput-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@a
    .line 58
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@d
    .line 59
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@10
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@a
    .line 74
    invoke-direct {p0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@a
    .line 63
    iput-object p1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@c
    .line 64
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@11
    .line 65
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@14
    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@a
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@d
    .line 69
    return-void
.end method

.method public static getStatusStringFromValue(J)Ljava/lang/String;
    .locals 4
    .param p0, "val"    # J

    #@0
    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 188
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@7
    shr-long v2, p0, v1

    #@9
    long-to-int v1, v2

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 204
    const-string/jumbo v1, "undefined"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 207
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 190
    :pswitch_0
    const-string/jumbo v1, "always : "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 191
    const-wide/16 v2, -0x1

    #@20
    and-long/2addr v2, p0

    #@21
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    goto :goto_0

    #@29
    .line 195
    :pswitch_1
    const-string/jumbo v1, "ask"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_0

    #@30
    .line 199
    :pswitch_2
    const-string/jumbo v1, "never"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_0

    #@37
    .line 188
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@6
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v1

    #@a
    iput v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@c
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 219
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@14
    .line 220
    iget-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@16
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@19
    .line 215
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 212
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDomains()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getDomainsString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 105
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@1a
    move-result v3

    #@1b
    if-lez v3, :cond_0

    #@1d
    .line 106
    const-string/jumbo v3, " "

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 108
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 110
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method

.method getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 126
    const/4 v2, 0x0

    #@1
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 127
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Missing element under "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    sget-object v3, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ": "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, " at "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 130
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@3d
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 131
    return p3

    #@41
    .line 133
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@44
    move-result v2

    #@45
    return v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@2
    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 183
    iget v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@2
    int-to-long v0, v0

    #@3
    invoke-static {v0, v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusStringFromValue(J)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 115
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Missing element under "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    sget-object v3, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, ": "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " at "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 118
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@39
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 119
    return-object p3

    #@3d
    .line 121
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v7, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 139
    const-string/jumbo v5, "packageName"

    #@6
    invoke-virtual {p0, p1, v5, v8}, Landroid/content/pm/IntentFilterVerificationInfo;->getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    iput-object v5, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@c
    .line 140
    iget-object v5, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@e
    if-nez v5, :cond_0

    #@10
    .line 141
    sget-object v5, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v6, "Package name cannot be null!"

    #@15
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 143
    :cond_0
    const-string/jumbo v5, "status"

    #@1b
    invoke-virtual {p0, p1, v5, v7}, Landroid/content/pm/IntentFilterVerificationInfo;->getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@1e
    move-result v2

    #@1f
    .line 144
    .local v2, "status":I
    if-ne v2, v7, :cond_1

    #@21
    .line 145
    sget-object v5, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@23
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "Unknown status value: "

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 147
    :cond_1
    iput v2, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@3c
    .line 149
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3f
    move-result v1

    #@40
    .line 151
    .local v1, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@43
    move-result v4

    #@44
    .local v4, "type":I
    const/4 v5, 0x1

    #@45
    if-eq v4, v5, :cond_6

    #@47
    .line 152
    if-ne v4, v9, :cond_3

    #@49
    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4c
    move-result v5

    #@4d
    if-le v5, v1, :cond_6

    #@4f
    .line 154
    :cond_3
    if-eq v4, v9, :cond_2

    #@51
    .line 155
    const/4 v5, 0x4

    #@52
    if-eq v4, v5, :cond_2

    #@54
    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 160
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "domain"

    #@5b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_5

    #@61
    .line 161
    const-string/jumbo v5, "name"

    #@64
    invoke-virtual {p0, p1, v5, v8}, Landroid/content/pm/IntentFilterVerificationInfo;->getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    .line 162
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6b
    move-result v5

    #@6c
    if-nez v5, :cond_4

    #@6e
    .line 163
    iget-object v5, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@70
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@73
    .line 168
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@76
    goto :goto_0

    #@77
    .line 166
    :cond_5
    sget-object v5, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@79
    new-instance v6, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v7, "Unknown tag parsing IntentFilter: "

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    goto :goto_1

    #@91
    .line 138
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public setDomains(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@5
    iput-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@7
    .line 98
    return-void
.end method

.method public setStatus(I)V
    .locals 3
    .param p1, "s"    # I

    #@0
    .prologue
    .line 86
    if-ltz p1, :cond_0

    #@2
    .line 87
    const/4 v0, 0x3

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 88
    iput p1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@7
    .line 85
    :goto_0
    return-void

    #@8
    .line 90
    :cond_0
    sget-object v0, Landroid/content/pm/IntentFilterVerificationInfo;->TAG:Ljava/lang/String;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Trying to set a non supported status: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 226
    iget v0, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    #@c
    iget-object v1, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@14
    .line 224
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 173
    const-string/jumbo v2, "packageName"

    #@4
    iget-object v3, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mPackageName:Ljava/lang/String;

    #@6
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 174
    const-string/jumbo v2, "status"

    #@c
    iget v3, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mMainStatus:I

    #@e
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 175
    iget-object v2, p0, Landroid/content/pm/IntentFilterVerificationInfo;->mDomains:Landroid/util/ArraySet;

    #@17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;

    #@27
    .line 176
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v2, "domain"

    #@2a
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 177
    const-string/jumbo v2, "name"

    #@30
    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 178
    const-string/jumbo v2, "domain"

    #@36
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    goto :goto_0

    #@3a
    .line 172
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
