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
.field private static final serialVersionUID:J = -0x6e3778281321bb26L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
    return-void
.end method
