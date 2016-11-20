.class Landroid/graphics/Canvas$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 96
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    #@2
    .line 97
    const-class v1, Landroid/graphics/Canvas;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Landroid/graphics/Canvas;->-wrap0()J

    #@b
    move-result-wide v2

    #@c
    const-wide/16 v4, 0x20d

    #@e
    .line 96
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    #@11
    sput-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    #@13
    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
