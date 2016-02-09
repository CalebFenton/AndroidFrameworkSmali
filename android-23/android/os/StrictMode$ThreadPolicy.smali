.class public final Landroid/os/StrictMode$ThreadPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ThreadPolicy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroid/os/StrictMode$ThreadPolicy;


# instance fields
.field final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 359
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy;-><init>(I)V

    #@6
    sput-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    #@8
    .line 355
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 364
    iput p1, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    #@5
    .line 363
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 0
    .param p1, "mask"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/StrictMode$ThreadPolicy;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[StrictMode.ThreadPolicy; mask="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
