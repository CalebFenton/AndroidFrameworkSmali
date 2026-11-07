.class public Landroid/net/connectivity/org/chromium/base/ApiCompatibilityUtils;
.super Ljava/lang/Object;
.source "ApiCompatibilityUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApiCompatUtil"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkPermission(Landroid/content/Context;Ljava/lang/String;II)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 99
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 100
    :catch_5
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist clearHandwritingBoundsOffsetBottom(Landroid/view/View;)V
    .registers 10
    .param p0, "view"    # Landroid/view/View;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_7

    return-void

    .line 183
    :cond_7
    :try_start_7
    const-class v0, Landroid/view/View;

    const-string v1, "getHandwritingBoundsOffsetTop"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 184
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 186
    .local v0, "offsetTop":F
    const-class v1, Landroid/view/View;

    const-string v3, "getHandwritingBoundsOffsetLeft"

    new-array v4, v2, [Ljava/lang/Class;

    .line 187
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 189
    .local v1, "offsetLeft":F
    const-class v3, Landroid/view/View;

    const-string v4, "getHandwritingBoundsOffsetRight"

    new-array v5, v2, [Ljava/lang/Class;

    .line 190
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 192
    .local v3, "offsetRight":F
    const-class v4, Landroid/view/View;

    const-string v5, "setHandwritingBoundsOffsets"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 193
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 199
    .local v4, "setHandwritingBoundsOffsets":Ljava/lang/reflect/Method;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v6, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7f} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7f} :catch_81
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7f} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7f} :catch_81

    .line 205
    nop

    .end local v0    # "offsetTop":F
    .end local v1    # "offsetLeft":F
    .end local v3    # "offsetRight":F
    .end local v4    # "setHandwritingBoundsOffsets":Ljava/lang/reflect/Method;
    goto :goto_82

    .line 200
    :catch_81
    move-exception v0

    .line 206
    :goto_82
    return-void
.end method

.method public static blacklist getBitmapByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    nop

    .line 218
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getBytesUtf8(Ljava/lang/String;)[B
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ApiCompatibilityUtils;->getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "density"    # I

    .line 70
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 75
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    if-nez p2, :cond_f

    .line 76
    :try_start_7
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_17

    .line 80
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 76
    return-object v1

    .line 78
    :cond_f
    :try_start_f
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 80
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 78
    return-object v1

    .line 80
    :catchall_17
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 81
    throw v1
.end method

.method public static blacklist getTargetableDisplayIds(Landroid/app/Activity;)Ljava/util/List;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 119
    nop

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_9

    return-object v0

    .line 122
    :cond_9
    nop

    .line 123
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 124
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-nez v1, :cond_15

    return-object v0

    .line 125
    :cond_15
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 126
    .local v2, "displays":[Landroid/view/Display;
    nop

    .line 127
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 128
    .local v3, "am":Landroid/app/ActivityManager;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_50

    aget-object v6, v2, v5

    .line 129
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4d

    .line 132
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    new-instance v8, Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-virtual {v3, p0, v7, v8}, Landroid/app/ActivityManager;->isActivityStartAllowedOnDisplay(Landroid/content/Context;ILandroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 134
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v6    # "display":Landroid/view/Display;
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 137
    :cond_50
    return-object v0
.end method

.method public static blacklist isDemoUser()Z
    .registers 2

    .line 90
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 91
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    return v1
.end method

.method public static blacklist isRunningInUserTestHarness()Z
    .registers 1

    .line 209
    nop

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    return v0
.end method

.method public static blacklist setActivityOptionsBackgroundActivityStartMode(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_7

    return-void

    .line 152
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 154
    return-void
.end method

.method public static blacklist setCreatorActivityOptionsBackgroundActivityStartMode(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_7

    return-void

    .line 165
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 167
    return-void
.end method
