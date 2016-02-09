.class public final Landroid/provider/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Downloads$Impl;
    }
.end annotation


# static fields
.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification_package"    # Ljava/lang/String;
    .param p2, "notification_class"    # Ljava/lang/String;

    #@0
    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    #@6
    const-string/jumbo v2, "notificationpackage=? AND notificationclass=?"

    #@9
    .line 806
    const/4 v3, 0x2

    #@a
    new-array v3, v3, [Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object p1, v3, v4

    #@f
    const/4 v4, 0x1

    #@10
    aput-object p2, v3, v4

    #@12
    .line 805
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@15
    .line 804
    return-void
.end method
