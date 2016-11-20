.class public Lcom/android/server/notification/PropConfig;
.super Ljava/lang/Object;
.source "PropConfig.java"


# static fields
.field private static final UNSET:Ljava/lang/String; = "UNSET"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    #@7
    move-result v0

    #@8
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 30
    const-string/jumbo v1, "UNSET"

    #@3
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 31
    .local v0, "prop":Ljava/lang/String;
    const-string/jumbo v1, "UNSET"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    const-string/jumbo v1, ","

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    :goto_0
    return-object v1

    #@18
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    goto :goto_0
.end method
