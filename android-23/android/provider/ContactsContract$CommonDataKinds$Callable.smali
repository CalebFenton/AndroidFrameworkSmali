.class public final Landroid/provider/ContactsContract$CommonDataKinds$Callable;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Callable"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 7327
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 7328
    const-string/jumbo v1, "callables"

    #@5
    .line 7327
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 7333
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    #@d
    .line 7334
    const-string/jumbo v1, "filter"

    #@10
    .line 7333
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@16
    .line 7321
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
