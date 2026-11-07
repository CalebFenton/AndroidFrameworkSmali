.class public final Landroid/content/pm/LauncherUserInfo$Builder;
.super Ljava/lang/Object;
.source "LauncherUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mUserConfig:Landroid/os/Bundle;

.field private final blacklist mUserSerialNumber:I

.field private final blacklist mUserType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userSerialNumber"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserType:Ljava/lang/String;

    .line 142
    iput p2, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserSerialNumber:I

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserConfig:Landroid/os/Bundle;

    .line 144
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userSerialNumber"    # I
    .param p3, "config"    # Landroid/os/Bundle;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserType:Ljava/lang/String;

    .line 136
    iput p2, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserSerialNumber:I

    .line 137
    iput-object p3, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserConfig:Landroid/os/Bundle;

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/pm/LauncherUserInfo;
    .registers 6

    .line 151
    new-instance v0, Landroid/content/pm/LauncherUserInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserType:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserSerialNumber:I

    iget-object v3, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserConfig:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/LauncherUserInfo;-><init>(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/pm/LauncherUserInfo-IA;)V

    return-object v0
.end method
