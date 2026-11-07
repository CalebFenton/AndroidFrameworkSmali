.class public final Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
.super Landroid/content/IntentFilter;
.source "AuxiliaryResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AuxiliaryResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuxiliaryFilter"
.end annotation


# instance fields
.field public final greylist-max-o extras:Landroid/os/Bundle;

.field public final greylist-max-o packageName:Ljava/lang/String;

.field public final greylist-max-o resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field public final greylist-max-o splitName:Ljava/lang/String;

.field public final greylist-max-o versionCode:J


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "orig"    # Landroid/content/IntentFilter;
    .param p2, "resolveInfo"    # Landroid/content/pm/InstantAppResolveInfo;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 101
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 102
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 103
    invoke-virtual {p2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p2}, Landroid/content/pm/InstantAppResolveInfo;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    .line 105
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    .line 107
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "resolveInfo"    # Landroid/content/pm/InstantAppResolveInfo;
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 110
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 112
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    .line 114
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "splitName"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 120
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    .line 121
    iput-wide p2, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    .line 122
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuxiliaryFilter{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", versionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", splitName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
