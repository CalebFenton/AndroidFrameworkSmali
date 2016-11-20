.class public final Landroid/provider/BrowserContract$Accounts;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ROOT_ID:Ljava/lang/String; = "root_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 411
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "accounts"

    #@9
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@10
    move-result-object v0

    #@11
    .line 410
    sput-object v0, Landroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    #@13
    .line 406
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
