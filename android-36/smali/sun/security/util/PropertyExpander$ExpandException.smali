.class public Lsun/security/util/PropertyExpander$ExpandException;
.super Ljava/security/GeneralSecurityException;
.source "PropertyExpander.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/PropertyExpander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandException"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x6e3778281321bb26L


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
