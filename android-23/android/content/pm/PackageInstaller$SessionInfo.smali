.class public Landroid/content/pm/PackageInstaller$SessionInfo;
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
    name = "SessionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public active:Z

.field public appIcon:Landroid/graphics/Bitmap;

.field public appLabel:Ljava/lang/CharSequence;

.field public appPackageName:Ljava/lang/String;

.field public installerPackageName:Ljava/lang/String;

.field public mode:I

.field public progress:F

.field public resolvedBaseCodePath:Ljava/lang/String;

.field public sealed:Z

.field public sessionId:I

.field public sizeBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1244
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1079
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@b
    .line 1112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@11
    .line 1113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    #@17
    .line 1114
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    #@1d
    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    move v0, v1

    #@24
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    #@26
    .line 1116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    #@2e
    .line 1118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v0

    #@32
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    #@34
    .line 1119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@37
    move-result-wide v0

    #@38
    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@3a
    .line 1120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    #@40
    .line 1121
    const/4 v0, 0x0

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/graphics/Bitmap;

    #@47
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    #@49
    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    #@4f
    .line 1110
    return-void

    #@50
    :cond_0
    move v0, v2

    #@51
    .line 1115
    goto :goto_0

    #@52
    :cond_1
    move v1, v2

    #@53
    .line 1116
    goto :goto_1
.end method


# virtual methods
.method public createDetailsIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 1209
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.content.pm.action.SESSION_DETAILS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1210
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.content.pm.extra.SESSION_ID"

    #@b
    iget v2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 1211
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 1212
    const/high16 v1, 0x10000000

    #@17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1a
    .line 1213
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1224
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 1188
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1196
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1180
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDetailsIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1219
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->createDetailsIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1136
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    #@0
    .prologue
    .line 1149
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    #@2
    return v0
.end method

.method public getSessionId()I
    .locals 1

    #@0
    .prologue
    .line 1129
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@2
    return v0
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 1166
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    #@2
    return v0
.end method

.method public isOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1172
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1229
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1230
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 1231
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1232
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    .line 1233
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    move v0, v1

    #@1c
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1234
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    #@21
    if-eqz v0, :cond_1

    #@23
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 1236
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 1237
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@30
    .line 1238
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 1239
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    #@37
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3a
    .line 1240
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    #@3c
    if-eqz v0, :cond_2

    #@3e
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    #@40
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@47
    .line 1228
    return-void

    #@48
    :cond_0
    move v0, v2

    #@49
    .line 1233
    goto :goto_0

    #@4a
    :cond_1
    move v1, v2

    #@4b
    .line 1234
    goto :goto_1

    #@4c
    :cond_2
    move-object v0, v3

    #@4d
    .line 1240
    goto :goto_2
.end method
