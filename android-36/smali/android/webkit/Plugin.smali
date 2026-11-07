.class public Landroid/webkit/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Plugin$DefaultClickHandler;,
        Landroid/webkit/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDescription:Ljava/lang/String;

.field private greylist-max-o mFileName:Ljava/lang/String;

.field private greylist-max-o mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/webkit/Plugin;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/webkit/Plugin;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin-IA;)V

    iput-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 70
    return-void
.end method


# virtual methods
.method public greylist-max-o dispatchClickEvent(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkit/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    .line 184
    :cond_9
    return-void
.end method

.method public greylist-max-o getDescription()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getFileName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V
    .registers 2
    .param p1, "handler"    # Landroid/webkit/Plugin$PreferencesClickHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iput-object p1, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 170
    return-void
.end method

.method public greylist-max-o setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iput-object p1, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public greylist-max-o setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iput-object p1, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public greylist-max-o setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public greylist-max-o setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iput-object p1, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
