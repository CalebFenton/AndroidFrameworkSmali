.class public Landroid/support/v4/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;,
        Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;,
        Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 66
    .local v0, "version":I
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 67
    new-instance v1, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;

    #@8
    invoke-direct {v1}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/content/ContentResolverCompat;->IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;

    #@d
    .line 30
    :goto_0
    return-void

    #@e
    .line 69
    :cond_0
    new-instance v1, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;

    #@10
    invoke-direct {v1}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;-><init>()V

    #@13
    sput-object v1, Landroid/support/v4/content/ContentResolverCompat;->IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;

    #@15
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/support/v4/os/CancellationSignal;

    #@0
    .prologue
    .line 114
    sget-object v0, Landroid/support/v4/content/ContentResolverCompat;->IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    move-object v7, p6

    #@9
    invoke-interface/range {v0 .. v7}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
