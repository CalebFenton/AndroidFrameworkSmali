.class public interface abstract Landroid/icu/text/UnicodeMatcher;
.super Ljava/lang/Object;
.source "UnicodeMatcher.java"


# static fields
.field public static final whitelist test-api ETHER:C = '\uffff'

.field public static final whitelist test-api U_MATCH:I = 0x2

.field public static final whitelist test-api U_MISMATCH:I = 0x0

.field public static final whitelist test-api U_PARTIAL_MATCH:I = 0x1


# virtual methods
.method public abstract whitelist test-api addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
.end method

.method public abstract whitelist test-api matches(Landroid/icu/text/Replaceable;[IIZ)I
.end method

.method public abstract whitelist test-api matchesIndexValue(I)Z
.end method

.method public abstract whitelist test-api toPattern(Z)Ljava/lang/String;
.end method
