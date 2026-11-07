.class public final Landroid/content/pm/PackageParser$CallbackImpl;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final greylist-max-o mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;)V
    .registers 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Landroid/content/pm/PackageParser$CallbackImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 624
    return-void
.end method


# virtual methods
.method public greylist-max-o hasFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 627
    iget-object v0, p0, Landroid/content/pm/PackageParser$CallbackImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
