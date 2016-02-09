.class final Lcom/google/android/maps/InternalR$styleable;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "styleable"
.end annotation


# static fields
.field public static final MapView:[I

.field public static final MapView_apiKey:I

.field private static final cls:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 129
    const-class v0, Lcom/android/internal/R$styleable;

    #@2
    sput-object v0, Lcom/google/android/maps/InternalR$styleable;->cls:Ljava/lang/Class;

    #@4
    .line 131
    sget-object v0, Lcom/google/android/maps/InternalR$styleable;->cls:Ljava/lang/Class;

    #@6
    const-string/jumbo v1, "MapView_apiKey"

    #@9
    invoke-static {v0, v1}, Lcom/google/android/maps/InternalR;->-wrap0(Ljava/lang/Class;Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    sput v0, Lcom/google/android/maps/InternalR$styleable;->MapView_apiKey:I

    #@f
    .line 132
    sget-object v0, Lcom/google/android/maps/InternalR$styleable;->cls:Ljava/lang/Class;

    #@11
    const-string/jumbo v1, "MapView"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/maps/InternalR;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [I

    #@1a
    sput-object v0, Lcom/google/android/maps/InternalR$styleable;->MapView:[I

    #@1c
    .line 128
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
