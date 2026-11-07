.class Landroid/content/pm/PackageParser$CachedComponentArgs;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedComponentArgs"
.end annotation


# instance fields
.field greylist-max-o mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field greylist-max-o mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field greylist-max-o mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field greylist-max-o mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/PackageParser-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>()V

    return-void
.end method
