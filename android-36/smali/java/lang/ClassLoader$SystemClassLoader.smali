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
.field public static greylist-max-o loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    invoke-static {}, Ljava/lang/ClassLoader;->-$$Nest$smcreateSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
