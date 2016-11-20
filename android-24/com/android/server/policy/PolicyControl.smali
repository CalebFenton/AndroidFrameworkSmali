.class public Lcom/android/server/policy/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "PolicyControl"

    #@3
    sput-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@5
    .line 53
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    #@8
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    #@0
    .prologue
    .line 100
    if-eqz p0, :cond_1

    #@2
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 101
    :goto_0
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@8
    if-eqz v1, :cond_0

    #@a
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@c
    invoke-virtual {v1, v0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 102
    and-int/lit8 p1, p1, -0x5

    #@14
    .line 104
    :cond_0
    return p1

    #@15
    .line 100
    :cond_1
    const/4 v0, 0x0

    #@16
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 109
    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    .line 108
    if-nez v0, :cond_1

    #@c
    .line 110
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    #@f
    move-result v0

    #@10
    .line 108
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/policy/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 135
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "PolicyControl."

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    const/16 v0, 0x3d

    #@e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    #@11
    .line 136
    if-nez p1, :cond_0

    #@13
    .line 137
    const-string/jumbo v0, "null"

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 134
    :goto_0
    return-void

    #@1a
    .line 139
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    #@1d
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    #@20
    goto :goto_0
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 129
    const-string/jumbo v0, "sImmersiveStatusFilter"

    #@3
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@5
    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@8
    .line 130
    const-string/jumbo v0, "sImmersiveNavigationFilter"

    #@b
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@d
    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@10
    .line 131
    const-string/jumbo v0, "sImmersivePreconfirmationsFilter"

    #@13
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@15
    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@18
    .line 128
    return-void
.end method

.method public static getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 66
    if-eqz p1, :cond_2

    #@2
    .line 67
    :goto_0
    if-eqz p0, :cond_3

    #@4
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    #@7
    move-result v0

    #@8
    .line 68
    .local v0, "vis":I
    :goto_1
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@a
    if-eqz v1, :cond_0

    #@c
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@e
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 69
    or-int/lit16 v0, v0, 0x1404

    #@16
    .line 72
    const v1, -0x40000101    # -1.9999694f

    #@19
    and-int/2addr v0, v1

    #@1a
    .line 75
    :cond_0
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@20
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 76
    or-int/lit16 v0, v0, 0x1202

    #@28
    .line 79
    const v1, 0x7ffffeff

    #@2b
    and-int/2addr v0, v1

    #@2c
    .line 82
    :cond_1
    return v0

    #@2d
    .line 66
    .end local v0    # "vis":I
    :cond_2
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@30
    move-result-object p1

    #@31
    goto :goto_0

    #@32
    .line 67
    :cond_3
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@34
    .restart local v0    # "vis":I
    goto :goto_1
.end method

.method public static getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 86
    if-eqz p1, :cond_2

    #@2
    .line 87
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4
    .line 88
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@6
    if-eqz v1, :cond_0

    #@8
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@a
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 89
    or-int/lit16 v0, v0, 0x400

    #@12
    .line 90
    const v1, -0x4000801

    #@15
    and-int/2addr v0, v1

    #@16
    .line 93
    :cond_0
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@18
    if-eqz v1, :cond_1

    #@1a
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@1c
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 94
    const v1, -0x8000001

    #@25
    and-int/2addr v0, v1

    #@26
    .line 96
    :cond_1
    return v0

    #@27
    .line 86
    .end local v0    # "flags":I
    :cond_2
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@2a
    move-result-object p1

    #@2b
    goto :goto_0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 114
    sget-boolean v2, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    sget-object v2, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v3, "reloadFromSetting()"

    #@9
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 115
    :cond_0
    const/4 v1, 0x0

    #@d
    .line 117
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v2

    #@11
    .line 118
    const-string/jumbo v3, "policy_control"

    #@14
    .line 119
    const/4 v4, -0x2

    #@15
    .line 117
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 120
    .local v1, "value":Ljava/lang/String;
    sget-object v2, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    sget-object v2, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    #@1f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    return-void

    #@26
    .line 121
    :cond_1
    invoke-static {v1}, Lcom/android/server/policy/PolicyControl;->setFilters(Ljava/lang/String;)V

    #@29
    .line 122
    sput-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 113
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    #@2c
    .line 123
    :catch_0
    move-exception v0

    #@2d
    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Error loading policy control, value="

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_0
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 11
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 144
    sget-boolean v6, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    sget-object v6, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@8
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v9, "setFilters: "

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 145
    :cond_0
    sput-object v10, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@21
    .line 146
    sput-object v10, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@23
    .line 147
    sput-object v10, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@25
    .line 148
    if-eqz p0, :cond_6

    #@27
    .line 149
    const-string/jumbo v6, ":"

    #@2a
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 150
    .local v4, "nvps":[Ljava/lang/String;
    array-length v8, v4

    #@2f
    move v6, v7

    #@30
    :goto_0
    if-ge v6, v8, :cond_6

    #@32
    aget-object v3, v4, v6

    #@34
    .line 151
    .local v3, "nvp":Ljava/lang/String;
    const/16 v9, 0x3d

    #@36
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    #@39
    move-result v1

    #@3a
    .line 152
    .local v1, "i":I
    const/4 v9, -0x1

    #@3b
    if-ne v1, v9, :cond_2

    #@3d
    .line 150
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 153
    :cond_2
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 154
    .local v2, "n":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    #@46
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    .line 155
    .local v5, "v":Ljava/lang/String;
    const-string/jumbo v9, "immersive.full"

    #@4d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_3

    #@53
    .line 156
    invoke-static {v5}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    #@56
    move-result-object v0

    #@57
    .line 157
    .local v0, "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@59
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@5b
    .line 158
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@5d
    if-nez v9, :cond_1

    #@5f
    .line 159
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@61
    goto :goto_1

    #@62
    .line 161
    .end local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_3
    const-string/jumbo v9, "immersive.status"

    #@65
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v9

    #@69
    if-eqz v9, :cond_4

    #@6b
    .line 162
    invoke-static {v5}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    #@6e
    move-result-object v0

    #@6f
    .line 163
    .restart local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@71
    goto :goto_1

    #@72
    .line 164
    .end local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_4
    const-string/jumbo v9, "immersive.navigation"

    #@75
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v9

    #@79
    if-eqz v9, :cond_5

    #@7b
    .line 165
    invoke-static {v5}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    #@7e
    move-result-object v0

    #@7f
    .line 166
    .restart local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@81
    .line 167
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@83
    if-nez v9, :cond_1

    #@85
    .line 168
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@87
    goto :goto_1

    #@88
    .line 170
    .end local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_5
    const-string/jumbo v9, "immersive.preconfirms"

    #@8b
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v9

    #@8f
    if-eqz v9, :cond_1

    #@91
    .line 171
    invoke-static {v5}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    #@94
    move-result-object v0

    #@95
    .line 172
    .restart local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@97
    goto :goto_1

    #@98
    .line 176
    .end local v0    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    .end local v1    # "i":I
    .end local v2    # "n":Ljava/lang/String;
    .end local v3    # "nvp":Ljava/lang/String;
    .end local v4    # "nvps":[Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    :cond_6
    sget-boolean v6, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    #@9a
    if-eqz v6, :cond_7

    #@9c
    .line 177
    sget-object v6, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@9e
    new-instance v7, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v8, "immersiveStatusFilter: "

    #@a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    sget-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@ac
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 178
    sget-object v6, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@b9
    new-instance v7, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v8, "immersiveNavigationFilter: "

    #@c1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    sget-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 179
    sget-object v6, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    #@d4
    new-instance v7, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v8, "immersivePreconfirmationsFilter: "

    #@dc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    sget-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    #@e2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v7

    #@e6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v7

    #@ea
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 143
    :cond_7
    return-void
.end method
