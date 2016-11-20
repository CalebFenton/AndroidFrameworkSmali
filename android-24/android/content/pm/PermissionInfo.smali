.class public Landroid/content/pm/PermissionInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PermissionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_COSTS_MONEY:I = 0x1

.field public static final FLAG_INSTALLED:I = 0x40000000

.field public static final FLAG_REMOVED:I = 0x2

.field public static final PROTECTION_DANGEROUS:I = 0x1

.field public static final PROTECTION_FLAG_APPOP:I = 0x40

.field public static final PROTECTION_FLAG_DEVELOPMENT:I = 0x20

.field public static final PROTECTION_FLAG_INSTALLER:I = 0x100

.field public static final PROTECTION_FLAG_PRE23:I = 0x80

.field public static final PROTECTION_FLAG_PREINSTALLED:I = 0x400

.field public static final PROTECTION_FLAG_PRIVILEGED:I = 0x10

.field public static final PROTECTION_FLAG_SETUP:I = 0x800

.field public static final PROTECTION_FLAG_SYSTEM:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTECTION_FLAG_VERIFIER:I = 0x200

.field public static final PROTECTION_MASK_BASE:I = 0xf

.field public static final PROTECTION_MASK_FLAGS:I = 0xff0

.field public static final PROTECTION_NORMAL:I = 0x0

.field public static final PROTECTION_SIGNATURE:I = 0x2

.field public static final PROTECTION_SIGNATURE_OR_SYSTEM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public descriptionRes:I

.field public flags:I

.field public group:Ljava/lang/String;

.field public nonLocalizedDescription:Ljava/lang/CharSequence;

.field public protectionLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 298
    new-instance v0, Landroid/content/pm/PermissionInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PermissionInfo$1;-><init>()V

    #@5
    .line 297
    sput-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PermissionInfo;

    #@0
    .prologue
    .line 246
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@3
    .line 247
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@5
    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@7
    .line 248
    iget v0, p1, Landroid/content/pm/PermissionInfo;->flags:I

    #@9
    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    #@b
    .line 249
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@f
    .line 250
    iget v0, p1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@11
    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@13
    .line 251
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@15
    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@17
    .line 245
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@9
    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    #@f
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@15
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@1b
    .line 313
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/CharSequence;

    #@23
    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@25
    .line 307
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static fixProtectionLevel(I)I
    .locals 1
    .param p0, "level"    # I

    #@0
    .prologue
    .line 192
    const/4 v0, 0x3

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 193
    const/16 p0, 0x12

    #@5
    .line 195
    :cond_0
    return p0
.end method

.method public static protectionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "level"    # I

    #@0
    .prologue
    .line 200
    const-string/jumbo v0, "????"

    #@3
    .line 201
    .local v0, "protLevel":Ljava/lang/String;
    and-int/lit8 v1, p0, 0xf

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 215
    :goto_0
    and-int/lit8 v1, p0, 0x10

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "|privileged"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 218
    :cond_0
    and-int/lit8 v1, p0, 0x20

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, "|development"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 221
    :cond_1
    and-int/lit8 v1, p0, 0x40

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    const-string/jumbo v2, "|appop"

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    .line 224
    :cond_2
    and-int/lit16 v1, p0, 0x80

    #@52
    if-eqz v1, :cond_3

    #@54
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    const-string/jumbo v2, "|pre23"

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    .line 227
    :cond_3
    and-int/lit16 v1, p0, 0x100

    #@6a
    if-eqz v1, :cond_4

    #@6c
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    const-string/jumbo v2, "|installer"

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    .line 230
    :cond_4
    and-int/lit16 v1, p0, 0x200

    #@82
    if-eqz v1, :cond_5

    #@84
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    const-string/jumbo v2, "|verifier"

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    .line 233
    :cond_5
    and-int/lit16 v1, p0, 0x400

    #@9a
    if-eqz v1, :cond_6

    #@9c
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    const-string/jumbo v2, "|preinstalled"

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    .line 236
    :cond_6
    and-int/lit16 v1, p0, 0x800

    #@b2
    if-eqz v1, :cond_7

    #@b4
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    const-string/jumbo v2, "|setup"

    #@c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v1

    #@c4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    .line 239
    :cond_7
    return-object v0

    #@c9
    .line 203
    :pswitch_0
    const-string/jumbo v0, "dangerous"

    #@cc
    goto/16 :goto_0

    #@ce
    .line 206
    :pswitch_1
    const-string/jumbo v0, "normal"

    #@d1
    goto/16 :goto_0

    #@d3
    .line 209
    :pswitch_2
    const-string/jumbo v0, "signature"

    #@d6
    goto/16 :goto_0

    #@d8
    .line 212
    :pswitch_3
    const-string/jumbo v0, "signatureOrSystem"

    #@db
    goto/16 :goto_0

    #@dd
    .line 201
    nop

    #@de
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 285
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 266
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 267
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@7
    return-object v1

    #@8
    .line 269
    :cond_0
    iget v1, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 270
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@e
    iget v2, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@10
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    .line 271
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@16
    .line 272
    return-object v0

    #@17
    .line 275
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PermissionInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 280
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 281
    const-string/jumbo v1, " "

    #@1b
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 281
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@21
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 281
    const-string/jumbo v1, "}"

    #@28
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 290
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 291
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 292
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 293
    iget v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 294
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@19
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1c
    .line 288
    return-void
.end method
