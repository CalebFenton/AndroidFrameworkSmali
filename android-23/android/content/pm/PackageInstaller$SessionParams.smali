.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_FULL_INSTALL:I = 0x1

.field public static final MODE_INHERIT_EXISTING:I = 0x2

.field public static final MODE_INVALID:I = -0x1


# instance fields
.field public abiOverride:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconLastModified:J

.field public appLabel:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public mode:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1063
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 848
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "mode"    # I

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 871
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@8
    .line 875
    const/4 v0, 0x1

    #@9
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@b
    .line 877
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@d
    .line 885
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@f
    .line 905
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@11
    .line 904
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 871
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@9
    .line 875
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@c
    .line 877
    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@e
    .line 885
    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@10
    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@16
    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1c
    .line 912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@22
    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@28
    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@2e
    .line 915
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/graphics/Bitmap;

    #@34
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@36
    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@3c
    .line 917
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/net/Uri;

    #@42
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@44
    .line 918
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/net/Uri;

    #@4a
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@4c
    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@52
    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@58
    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@5e
    .line 909
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1043
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1026
    const-string/jumbo v0, "mode"

    #@3
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 1027
    const-string/jumbo v0, "installFlags"

    #@f
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@11
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)V

    #@14
    .line 1028
    const-string/jumbo v0, "installLocation"

    #@17
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@20
    .line 1029
    const-string/jumbo v0, "sizeBytes"

    #@23
    iget-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 1030
    const-string/jumbo v0, "appPackageName"

    #@2f
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    .line 1031
    const-string/jumbo v1, "appIcon"

    #@37
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@39
    if-eqz v0, :cond_0

    #@3b
    const/4 v0, 0x1

    #@3c
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@43
    .line 1032
    const-string/jumbo v0, "appLabel"

    #@46
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@4b
    .line 1033
    const-string/jumbo v0, "originatingUri"

    #@4e
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@50
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@53
    .line 1034
    const-string/jumbo v0, "referrerUri"

    #@56
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@58
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5b
    .line 1035
    const-string/jumbo v0, "abiOverride"

    #@5e
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@60
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@63
    .line 1036
    const-string/jumbo v0, "volumeUuid"

    #@66
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@68
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@6b
    .line 1037
    const-string/jumbo v0, "grantedRuntimePermissions"

    #@6e
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@70
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;[Ljava/lang/Object;)V

    #@73
    .line 1038
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@76
    .line 1025
    return-void

    #@77
    .line 1031
    :cond_0
    const/4 v0, 0x0

    #@78
    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 965
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@2
    .line 964
    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "appLabel"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 972
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@9
    .line 971
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 956
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@2
    .line 955
    return-void
.end method

.method public setGrantedRuntimePermissions([Ljava/lang/String;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1008
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit16 v0, v0, 0x100

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1009
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@8
    .line 1007
    return-void
.end method

.method public setInstallFlagsExternal()V
    .locals 1

    #@0
    .prologue
    .line 1020
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit8 v0, v0, 0x8

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1021
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8
    and-int/lit8 v0, v0, -0x11

    #@a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@c
    .line 1019
    return-void
.end method

.method public setInstallFlagsInternal()V
    .locals 1

    #@0
    .prologue
    .line 1014
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit8 v0, v0, 0x10

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1015
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8
    and-int/lit8 v0, v0, -0x9

    #@a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@c
    .line 1013
    return-void
.end method

.method public setInstallLocation(I)V
    .locals 0
    .param p1, "installLocation"    # I

    #@0
    .prologue
    .line 930
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@2
    .line 929
    return-void
.end method

.method public setOriginatingUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "originatingUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 982
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@2
    .line 981
    return-void
.end method

.method public setReferrerUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "referrerUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 992
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@2
    .line 991
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "sizeBytes"    # J

    #@0
    .prologue
    .line 943
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@2
    .line 942
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1048
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1049
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1050
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1051
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1052
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1053
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@1b
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1e
    .line 1054
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1055
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@25
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@28
    .line 1056
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@2a
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@2d
    .line 1057
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 1058
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 1059
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@3c
    .line 1047
    return-void
.end method
