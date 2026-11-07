.class public Landroid/content/IntentSender$SendIntentException;
.super Landroid/util/AndroidException;
.source "IntentSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendIntentException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 102
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 103
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method
