.class final Lcom/google/android/maps/InternalR$attr;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "attr"
.end annotation


# static fields
.field public static final mapViewStyle:I

.field public static final state_focused:I

.field public static final state_pressed:I

.field public static final state_selected:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "mapViewStyle"

    #@3
    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    #@9
    .line 102
    const-string/jumbo v0, "state_focused"

    #@c
    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@12
    .line 103
    const-string/jumbo v0, "state_selected"

    #@15
    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    sput v0, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@1b
    .line 104
    const-string/jumbo v0, "state_pressed"

    #@1e
    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    sput v0, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@24
    .line 96
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static get(Ljava/lang/String;)I
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    const-class v0, Lcom/android/internal/R$attr;

    #@2
    invoke-static {v0, p0}, Lcom/google/android/maps/InternalR;->-wrap0(Ljava/lang/Class;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
