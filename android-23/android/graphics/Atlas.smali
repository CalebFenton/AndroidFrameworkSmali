.class public Landroid/graphics/Atlas;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$Type;,
        Landroid/graphics/Atlas$Entry;,
        Landroid/graphics/Atlas$Policy;,
        Landroid/graphics/Atlas$SlicePolicy;
    }
.end annotation


# static fields
.field private static synthetic -android_graphics_Atlas$TypeSwitchesValues:[I = null

.field public static final FLAG_ADD_PADDING:I = 0x2

.field public static final FLAG_DEFAULTS:I = 0x2


# instance fields
.field private final mPolicy:Landroid/graphics/Atlas$Policy;


# direct methods
.method private static synthetic -getandroid_graphics_Atlas$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/graphics/Atlas;->-android_graphics_Atlas$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/graphics/Atlas;->-android_graphics_Atlas$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    #@10
    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    #@19
    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    #@22
    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/graphics/Atlas;->-android_graphics_Atlas$TypeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;II)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 84
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    #@4
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Atlas;->findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    #@9
    .line 100
    return-void
.end method

.method private static findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;
    .locals 3
    .param p0, "type"    # Landroid/graphics/Atlas$Type;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 138
    invoke-static {}, Landroid/graphics/Atlas;->-getandroid_graphics_Atlas$TypeSwitchesValues()[I

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0}, Landroid/graphics/Atlas$Type;->ordinal()I

    #@8
    move-result v1

    #@9
    aget v0, v0, v1

    #@b
    packed-switch v0, :pswitch_data_0

    #@e
    .line 152
    return-object v2

    #@f
    .line 140
    :pswitch_0
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    #@11
    .line 141
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;

    #@13
    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;)V

    #@16
    .line 140
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    #@19
    return-object v0

    #@1a
    .line 143
    :pswitch_1
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    #@1c
    .line 144
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;

    #@1e
    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;)V

    #@21
    .line 143
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    #@24
    return-object v0

    #@25
    .line 146
    :pswitch_2
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    #@27
    .line 147
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;

    #@29
    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;)V

    #@2c
    .line 146
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    #@2f
    return-object v0

    #@30
    .line 149
    :pswitch_3
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    #@32
    .line 150
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;

    #@34
    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;)V

    #@37
    .line 149
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    #@3a
    return-object v0

    #@3b
    .line 138
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public pack(II)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "entry"    # Landroid/graphics/Atlas$Entry;

    #@0
    .prologue
    .line 133
    if-nez p3, :cond_0

    #@2
    new-instance p3, Landroid/graphics/Atlas$Entry;

    #@4
    .end local p3    # "entry":Landroid/graphics/Atlas$Entry;
    invoke-direct {p3}, Landroid/graphics/Atlas$Entry;-><init>()V

    #@7
    .line 134
    .restart local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :cond_0
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Atlas$Policy;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
