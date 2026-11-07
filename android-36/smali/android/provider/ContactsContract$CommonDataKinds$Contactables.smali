.class public final Landroid/provider/ContactsContract$CommonDataKinds$Contactables;
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
    name = "Contactables"
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist VISIBLE_CONTACTS_ONLY:Ljava/lang/String; = "visible_contacts_only"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 8416
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "contactables"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Contactables;->CONTENT_URI:Landroid/net/Uri;

    .line 8429
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Contactables;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Contactables;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 8410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
