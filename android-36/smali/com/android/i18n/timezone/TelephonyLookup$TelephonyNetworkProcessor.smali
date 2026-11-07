.class interface abstract Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;
.super Ljava/lang/Object;
.source "TelephonyLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/TelephonyLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TelephonyNetworkProcessor"
.end annotation


# static fields
.field public static final blacklist CONTINUE:Z = true

.field public static final blacklist HALT:Z = false


# virtual methods
.method public abstract blacklist processMobileCountries(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract blacklist processNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
