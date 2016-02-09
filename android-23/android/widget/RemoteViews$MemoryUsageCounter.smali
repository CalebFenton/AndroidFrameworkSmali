.class Landroid/widget/RemoteViews$MemoryUsageCounter;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUsageCounter"
.end annotation


# static fields
.field private static synthetic -android_graphics_Bitmap$ConfigSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config:[I

.field mMemoryUsage:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method private static synthetic -getandroid_graphics_Bitmap$ConfigSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/widget/RemoteViews$MemoryUsageCounter;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/widget/RemoteViews$MemoryUsageCounter;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@10
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

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
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@19
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

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
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@22
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

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
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

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
    sput-object v0, Landroid/widget/RemoteViews$MemoryUsageCounter;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

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

.method private constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1690
    iput-object p1, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->this$0:Landroid/widget/RemoteViews;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;)V

    #@3
    return-void
.end method


# virtual methods
.method public addBitmapMemory(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1705
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v1

    #@4
    .line 1707
    .local v1, "c":Landroid/graphics/Bitmap$Config;
    const/4 v0, 0x4

    #@5
    .line 1708
    .local v0, "bpp":I
    if-eqz v1, :cond_0

    #@7
    .line 1709
    invoke-static {}, Landroid/widget/RemoteViews$MemoryUsageCounter;->-getandroid_graphics_Bitmap$ConfigSwitchesValues()[I

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@e
    move-result v3

    #@f
    aget v2, v2, v3

    #@11
    packed-switch v2, :pswitch_data_0

    #@14
    .line 1722
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@17
    move-result v2

    #@18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1b
    move-result v3

    #@1c
    mul-int/2addr v2, v3

    #@1d
    mul-int/2addr v2, v0

    #@1e
    invoke-virtual {p0, v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    #@21
    .line 1704
    return-void

    #@22
    .line 1711
    :pswitch_0
    const/4 v0, 0x1

    #@23
    .line 1712
    goto :goto_0

    #@24
    .line 1715
    :pswitch_1
    const/4 v0, 0x2

    #@25
    .line 1716
    goto :goto_0

    #@26
    .line 1718
    :pswitch_2
    const/4 v0, 0x4

    #@27
    .line 1719
    goto :goto_0

    #@28
    .line 1709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1692
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    #@3
    .line 1691
    return-void
.end method

.method public getMemoryUsage()I
    .locals 1

    #@0
    .prologue
    .line 1700
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    #@2
    return v0
.end method

.method public increment(I)V
    .locals 1
    .param p1, "numBytes"    # I

    #@0
    .prologue
    .line 1696
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    #@5
    .line 1695
    return-void
.end method
