.class Ljava/lang/ClassLoader$SystemClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemClassLoader"
.end annotation


# static fields
.field public static loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-static {}, Ljava/lang/ClassLoader;->-wrap0()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    #@6
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
