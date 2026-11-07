.class public Landroid/database/TranslatingCursor$Config;
.super Ljava/lang/Object;
.source "TranslatingCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/TranslatingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final blacklist auxiliaryColumn:Ljava/lang/String;

.field public final blacklist baseUri:Landroid/net/Uri;

.field public final blacklist translateColumns:[Ljava/lang/String;


# direct methods
.method public varargs constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "auxiliaryColumn"    # Ljava/lang/String;
    .param p3, "translateColumns"    # [Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/database/TranslatingCursor$Config;->baseUri:Landroid/net/Uri;

    .line 48
    iput-object p2, p0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    .line 50
    return-void
.end method
