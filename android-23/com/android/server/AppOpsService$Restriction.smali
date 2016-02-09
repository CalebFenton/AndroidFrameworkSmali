.class final Lcom/android/server/AppOpsService$Restriction;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Restriction"
.end annotation


# static fields
.field private static final NO_EXCEPTIONS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field exceptionPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1735
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/AppOpsService$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    #@7
    .line 1734
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1737
    sget-object v0, Lcom/android/server/AppOpsService$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    #@5
    iput-object v0, p0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@7
    .line 1734
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppOpsService$Restriction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Restriction;-><init>()V

    #@3
    return-void
.end method
