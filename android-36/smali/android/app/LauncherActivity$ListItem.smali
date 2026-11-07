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
.field public whitelist className:Ljava/lang/String;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist icon:Landroid/graphics/drawable/Drawable;

.field public whitelist label:Ljava/lang/CharSequence;

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "resizer"    # Landroid/app/LauncherActivity$IconResizer;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 79
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    .line 80
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 81
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_11

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 82
    :cond_11
    iget-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    if-nez v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 83
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    .line 86
    :cond_1d
    if-eqz p3, :cond_29

    .line 87
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_29
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    .line 90
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    .line 91
    return-void
.end method
