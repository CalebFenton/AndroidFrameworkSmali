.class public Landroid/app/admin/SystemUpdatePolicy;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/SystemUpdatePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_INSTALL_WINDOW_END:Ljava/lang/String; = "install_window_end"

.field private static final KEY_INSTALL_WINDOW_START:Ljava/lang/String; = "install_window_start"

.field private static final KEY_POLICY_TYPE:Ljava/lang/String; = "policy_type"

.field public static final TYPE_INSTALL_AUTOMATIC:I = 0x1

.field public static final TYPE_INSTALL_WINDOWED:I = 0x2

.field public static final TYPE_POSTPONE:I = 0x3

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final WINDOW_BOUNDARY:I = 0x5a0


# instance fields
.field private mMaintenanceWindowEnd:I

.field private mMaintenanceWindowStart:I

.field private mPolicyType:I


# direct methods
.method static synthetic -set0(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$1;

    #@2
    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy$1;-><init>()V

    #@5
    .line 217
    sput-object v0, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@6
    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    #@3
    return-void
.end method

.method public static createAutomaticInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    #@2
    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    #@5
    .line 101
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x1

    #@6
    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@8
    .line 102
    return-object v0
.end method

.method public static createPostponeInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    #@2
    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    #@5
    .line 141
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x3

    #@6
    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@8
    .line 142
    return-object v0
.end method

.method public static createWindowedInstallPolicy(II)Landroid/app/admin/SystemUpdatePolicy;
    .locals 3
    .param p0, "startTime"    # I
    .param p1, "endTime"    # I

    #@0
    .prologue
    const/16 v1, 0x5a0

    #@2
    .line 121
    if-ltz p0, :cond_0

    #@4
    if-lt p0, v1, :cond_1

    #@6
    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "startTime and endTime must be inside [0, 1440)"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 122
    :cond_1
    if-ltz p1, :cond_0

    #@11
    if-ge p1, v1, :cond_0

    #@13
    .line 125
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    #@15
    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    #@18
    .line 126
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x2

    #@19
    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@1b
    .line 127
    iput p0, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@1d
    .line 128
    iput p1, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@1f
    .line 129
    return-object v0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 241
    :try_start_0
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy;

    #@3
    invoke-direct {v1}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    #@6
    .line 242
    .local v1, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const-string/jumbo v3, "policy_type"

    #@9
    const/4 v4, 0x0

    #@a
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 243
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@10
    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13
    move-result v3

    #@14
    iput v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@16
    .line 246
    const-string/jumbo v3, "install_window_start"

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 247
    if-eqz v2, :cond_0

    #@20
    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v3

    #@24
    iput v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@26
    .line 250
    :cond_0
    const-string/jumbo v3, "install_window_end"

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 251
    if-eqz v2, :cond_1

    #@30
    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@33
    move-result v3

    #@34
    iput v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 254
    :cond_1
    return-object v1

    #@37
    .line 256
    .end local v1    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@38
    .line 259
    :cond_2
    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getInstallWindowEnd()I
    .locals 2

    #@0
    .prologue
    .line 177
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 178
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@7
    return v0

    #@8
    .line 180
    :cond_0
    const/4 v0, -0x1

    #@9
    return v0
.end method

.method public getInstallWindowStart()I
    .locals 2

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 164
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@7
    return v0

    #@8
    .line 166
    :cond_0
    const/4 v0, -0x1

    #@9
    return v0
.end method

.method public getPolicyType()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@2
    return v0
.end method

.method public isValid()Z
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x5a0

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 189
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@6
    if-eq v2, v0, :cond_0

    #@8
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@a
    const/4 v3, 0x3

    #@b
    if-ne v2, v3, :cond_1

    #@d
    .line 190
    :cond_0
    return v0

    #@e
    .line 191
    :cond_1
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@10
    const/4 v3, 0x2

    #@11
    if-ne v2, v3, :cond_4

    #@13
    .line 192
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@15
    if-ltz v2, :cond_3

    #@17
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@19
    if-ge v2, v4, :cond_3

    #@1b
    .line 193
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@1d
    if-ltz v2, :cond_3

    #@1f
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@21
    if-ge v2, v4, :cond_2

    #@23
    .line 192
    :goto_0
    return v0

    #@24
    :cond_2
    move v0, v1

    #@25
    .line 193
    goto :goto_0

    #@26
    :cond_3
    move v0, v1

    #@27
    .line 192
    goto :goto_0

    #@28
    .line 195
    :cond_4
    return v1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 266
    const-string/jumbo v0, "policy_type"

    #@4
    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 267
    const-string/jumbo v0, "install_window_start"

    #@10
    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 268
    const-string/jumbo v0, "install_window_end"

    #@1c
    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@1e
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 201
    const-string/jumbo v0, "SystemUpdatePolicy (type: %d, windowStart: %d, windowEnd: %d)"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 202
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    .line 201
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 212
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 213
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 214
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 211
    return-void
.end method
