.class public final Landroid/provider/ContactsContract$Authorization;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Authorization"
.end annotation


# static fields
.field public static final greylist-max-o AUTHORIZATION_METHOD:Ljava/lang/String; = "authorize"

.field public static final greylist-max-o KEY_AUTHORIZED_URI:Ljava/lang/String; = "authorized_uri"

.field public static final greylist-max-o KEY_URI_TO_AUTHORIZE:Ljava/lang/String; = "uri_to_authorize"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
