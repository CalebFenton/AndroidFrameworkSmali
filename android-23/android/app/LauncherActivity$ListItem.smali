.class public Landroid/app/LauncherActivity$ListItem;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "resizer"    # Landroid/app/LauncherActivity$IconResizer;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p2, p0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@5
    .line 75
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    #@b
    .line 76
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@d
    .line 77
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_0

    #@f
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@11
    .line 78
    :cond_0
    iget-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    #@13
    if-nez v1, :cond_1

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 79
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1b
    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    #@1d
    .line 82
    :cond_1
    if-eqz p3, :cond_2

    #@1f
    .line 83
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p3, v1}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    #@29
    .line 85
    :cond_2
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2d
    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    #@2f
    .line 86
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@31
    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    #@33
    .line 73
    return-void
.end method
