.class Landroid/app/ResourcesManager$ActivityResources;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResources"
.end annotation


# instance fields
.field public final activityResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field public final overrideConfig:Landroid/content/res/Configuration;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    new-instance v0, Landroid/content/res/Configuration;

    #@5
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@a
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@11
    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ResourcesManager$ActivityResources;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/ResourcesManager$ActivityResources;-><init>()V

    #@3
    return-void
.end method
