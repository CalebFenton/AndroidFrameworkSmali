.class public abstract Lorg/apache/xml/utils/res/XResourceBundleBase;
.super Ljava/util/ListResourceBundle;
.source "XResourceBundleBase.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist getMessageKey(I)Ljava/lang/String;
.end method

.method public abstract greylist getWarningKey(I)Ljava/lang/String;
.end method
