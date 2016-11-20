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

.field public static final UID_UNKNOWN:I = -0x1


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

.field public originatingUid:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1110
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 852
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "mode"    # I

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const/4 v1, -0x1

    #@3
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 878
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@8
    .line 882
    const/4 v0, 0x1

    #@9
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@b
    .line 884
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@d
    .line 892
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@f
    .line 896
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@11
    .line 914
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@13
    .line 913
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 878
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@9
    .line 882
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@c
    .line 884
    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@e
    .line 892
    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@10
    .line 896
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@12
    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@18
    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1e
    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@24
    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@27
    move-result-wide v0

    #@28
    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@2a
    .line 923
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@30
    .line 924
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/graphics/Bitmap;

    #@36
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@38
    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@3e
    .line 926
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/net/Uri;

    #@44
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@46
    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@4c
    .line 928
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Landroid/net/Uri;

    #@52
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@54
    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@5a
    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@60
    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@66
    .line 918
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1089
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1071
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
    .line 1072
    const-string/jumbo v0, "installFlags"

    #@f
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@11
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)V

    #@14
    .line 1073
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
    .line 1074
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
    .line 1075
    const-string/jumbo v0, "appPackageName"

    #@2f
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    .line 1076
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
    .line 1077
    const-string/jumbo v0, "appLabel"

    #@46
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@4b
    .line 1078
    const-string/jumbo v0, "originatingUri"

    #@4e
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@50
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@53
    .line 1079
    const-string/jumbo v0, "originatingUid"

    #@56
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5f
    .line 1080
    const-string/jumbo v0, "referrerUri"

    #@62
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@64
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@67
    .line 1081
    const-string/jumbo v0, "abiOverride"

    #@6a
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@6c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@6f
    .line 1082
    const-string/jumbo v0, "volumeUuid"

    #@72
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@74
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@77
    .line 1083
    const-string/jumbo v0, "grantedRuntimePermissions"

    #@7a
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@7c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7f
    .line 1084
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@82
    .line 1070
    return-void

    #@83
    .line 1076
    :cond_0
    const/4 v0, 0x0

    #@84
    goto :goto_0
.end method

.method public setAllowDowngrade(Z)V
    .locals 1
    .param p1, "allowDowngrade"    # Z

    #@0
    .prologue
    .line 1041
    if-eqz p1, :cond_0

    #@2
    .line 1042
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@4
    or-int/lit16 v0, v0, 0x80

    #@6
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8
    .line 1040
    :goto_0
    return-void

    #@9
    .line 1044
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@b
    and-int/lit16 v0, v0, -0x81

    #@d
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@f
    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 975
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@2
    .line 974
    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "appLabel"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 982
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@9
    .line 981
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 966
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@2
    .line 965
    return-void
.end method

.method public setDontKillApp(Z)V
    .locals 1
    .param p1, "dontKillApp"    # Z

    #@0
    .prologue
    .line 1062
    if-eqz p1, :cond_0

    #@2
    .line 1063
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@4
    or-int/lit16 v0, v0, 0x1000

    #@6
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8
    .line 1061
    :goto_0
    return-void

    #@9
    .line 1065
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@b
    and-int/lit16 v0, v0, -0x1001

    #@d
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@f
    goto :goto_0
.end method

.method public setGrantedRuntimePermissions([Ljava/lang/String;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1028
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit16 v0, v0, 0x100

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1029
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@8
    .line 1027
    return-void
.end method

.method public setInstallFlagsExternal()V
    .locals 1

    #@0
    .prologue
    .line 1050
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit8 v0, v0, 0x8

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1051
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8
    and-int/lit8 v0, v0, -0x11

    #@a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@c
    .line 1049
    return-void
.end method

.method public setInstallFlagsForcePermissionPrompt()V
    .locals 1

    #@0
    .prologue
    .line 1056
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit16 v0, v0, 0x400

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1055
    return-void
.end method

.method public setInstallFlagsInternal()V
    .locals 1

    #@0
    .prologue
    .line 1034
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2
    or-int/lit8 v0, v0, 0x10

    #@4
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6
    .line 1035
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8
    and-int/lit8 v0, v0, -0x9

    #@a
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@c
    .line 1033
    return-void
.end method

.method public setInstallLocation(I)V
    .locals 0
    .param p1, "installLocation"    # I

    #@0
    .prologue
    .line 940
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@2
    .line 939
    return-void
.end method

.method public setOriginatingUid(I)V
    .locals 0
    .param p1, "originatingUid"    # I

    #@0
    .prologue
    .line 1002
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@2
    .line 1001
    return-void
.end method

.method public setOriginatingUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "originatingUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 992
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@2
    .line 991
    return-void
.end method

.method public setReferrerUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "referrerUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1012
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@2
    .line 1011
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "sizeBytes"    # J

    #@0
    .prologue
    .line 953
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@2
    .line 952
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1094
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1095
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1096
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1097
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1098
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1099
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@1b
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1e
    .line 1100
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1101
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@25
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@28
    .line 1102
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1103
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@2f
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@32
    .line 1104
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 1105
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 1106
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@41
    .line 1093
    return-void
.end method
